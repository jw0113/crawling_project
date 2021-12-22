package com.spring.finalcrawling;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

import org.springframework.stereotype.Service;

@Service
public class DataService implements IDataService {

	
	// 사용자의 정보를 받으면 해당 값을 python파일로 전송
	@Override
	public String dataSend(DataVO vo) {
		
		String start_mon = Integer.toString(vo.getStartDate()).substring(0, 2);
		String start_day = Integer.toString(vo.getStartDate()).substring(2);
		String end_mon = Integer.toString(vo.getEndDate()).substring(0, 2);
		String end_day = Integer.toString(vo.getEndDate()).substring(2);
		String data = Integer.toString(0) + "," +start_mon +","+ start_day +","+ end_mon +","+end_day +","+ vo.toString();

		Socket socket;
		String ip = "127.0.0.1";
		int port = 5000;
		
		OutputStream outputstream;
		InputStream inputstream;
		BufferedOutputStream bufferout;
		BufferedInputStream bufferin;
		
		
		try {
			socket = new Socket(ip,port);
			System.out.println("Connect Success");
			
			outputstream = socket.getOutputStream();
			inputstream = socket.getInputStream();
			bufferout = new BufferedOutputStream(outputstream);
			bufferin = new BufferedInputStream(inputstream);

			bufferout.write(data.getBytes());
			bufferout.flush();
			System.out.println("success");
			
			byte[] in = new byte[9999];
			String python_result = "";
			int a;
			while(true) {
				a = bufferin.read();
				
				if (a > 0) {
					
					python_result += new String(in,0,a);

				}
				
				// server에서 모든 코드를 보냈다면 while문 종료
				if (a <0) {
					break;
				}
			}
			
			System.out.println("받아온 파일 : " + python_result);
			bufferout.close();
			bufferin.close();
			socket.close();
			
			return python_result;

		} catch (Exception e) {
			System.out.println("Connect Fail");
			e.printStackTrace();
			return "fail";}
	}
}
