# 연관 컨테이너

###### map & multimap  
삽입 : O(logN) - 삽입을 위해 내부 트리를 탐색해야 해서 조금 느림  
              - insert() 사용시 힌트가 최적이라면 O(1)  
색인 : O(logN) - 키 사용할 경우  
정렬된 벡터에서 n이 크지 않다면 검색이 더 빠를 수 있음   
삽입 삭제가 빈번하다면 벡터보다 맵이 우세    

###### set & multiset   
삽입 : O(logN) - 삽입을 위해 내부 트리를 탐색해야 해서 조금 느림  
              - insert() 사용시 힌트가 최적이라면 O(1)  
색인 : O(logN) - 키 사용할 경우   
map과 동일한 자료구조를 사용하므로 성능의 특성이 맵과 동일   

###### unordered_map & unordered_multimap   
삽입 : O(1) - O(n)  
색인 : O(1) - O(n) - 키 사용할 경우  
해시 테이블   
생성에 많은 비용이 듬   
검색속도는 map, vector와 비교했을때 월등함   
but 메모리를 많이 차지한다  
    
###### unordered_set & unordered_multiset  


###### 결론  
C++ 03 에서는 vector가 짱이다.  
C++ 11 이후 에서 효율적인 검색이 필요하다면 unordered_map 그 외는 vector  
       만약 메모리가 적은 환경이라면 vector  