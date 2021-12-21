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
		
		String data = vo.toString();
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
			
			String deob_read = "";
			while(true) {

				
				if (bufferin.read() == 1) {
										
				}
				
				
				if (bufferin.read() > 0) {
					byte[] in = new byte[9999];
					deob_read += new String(in,0,bufferin.read(in));
					
						
				}
				// server에서 모든 코드를 보냈다면 while문 종료
				if (bufferin.read() <0) {
					
					break;
				}
			}

			bufferout.close();
			bufferin.close();
			socket.close();
			return deob_read;

		} catch (Exception e) {
			System.out.println("Connect Fail");
			e.printStackTrace();
			return "fail";}
	}
}
