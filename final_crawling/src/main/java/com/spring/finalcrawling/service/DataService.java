package com.spring.finalcrawling.service;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.finalcrawling.model.DataVO;
import com.spring.finalcrawling.model.DbdataVO;
import com.spring.finalcrawling.repository.IDataMapper;

@Service
public class DataService implements IDataService {
	
	@Autowired
	private IDataMapper mapper;

	
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
			
			byte[] in = new byte[1024];
			String python_result = "";
			int a;
			while(true) {
				a = bufferin.read(in);
				//System.out.println("aaa : " + a);
				
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
	
	
	// 해당 시의 db에서 선택한 여행 유형 정보 가져오기
	@Override
	public List<DbdataVO> selectLocation(DataVO vo, String result){
		
		String si_index[] = new String[] { "11.0","21.0","22.0","23.0","25.0","24.0","26.0","31.0","32.0","33.0","34.0","37.0","38.0","35.0","36.0","39.0"};
		String si_name[] = new String[] {"seoul", "busan","daegu","incheon","daejeon","gwangju","ulsan","gyeonggi_do","gangwon_do","chungcheongbuk_do","chungcheongnam_do","gyeongsangbuk_do","gyeongsangnam_do","jeollabuk_do","jeollanam_no","jeju_island"};
		
		String si_dbname = null;
		// 어떤 시로 나왔는지
		for(int i=0; i<si_index.length;i++) {
			if(si_index[i].equals(result)) {
				si_dbname = si_name[i];
			}
		}
		System.out.println("si_dbname : " + si_dbname);
		
		int num = 0;
		// 어떤 여행 유형을 선택했는지
		if(vo.getPlayA3_1() != 0) {
			num = 1;
		}
		else if(vo.getPlayA3_3() != 0) {
			num = 2;
		}
		else if(vo.getPlayA3_9() != 0) { 
			num = 3;
		}
		else if(vo.getPlayA3_2() != 0) {
			num = 4;
		}
		else if(vo.getPlayA3_8() != 0) {
			num = 5;
		}
		
		return mapper.selectLocation(si_dbname,num);
	}
}
