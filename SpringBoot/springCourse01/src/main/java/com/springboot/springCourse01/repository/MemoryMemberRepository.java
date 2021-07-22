package com.springboot.springCourse01.repository;

import com.springboot.springCourse01.domain.Member;

import java.util.*;

public class MemoryMemberRepository implements MemvberRepository{


//  실무에서는 동시성 문제가 있기 때문에

//  private static Map<Long, Member> store = new ConcurrentMap<>();
//  private static AtomicLong sequence = 0L 이런 식으로 많이 사용하긴 한다.

    private static Map<Long , Member> store  = new HashMap<>();
    private static long sequence = 0L;


    @Override
    public Member save(Member member) {
        member.setId(++sequence);
        store.put(member.getId(), member);

        return member;
    }

    @Override
    public Optional<Member> findById(Long id) {

        return Optional.ofNullable(store.get(id));
    }

    @Override
    public Optional<Member> findByName(String name) {
        return store.values().stream()
                .filter(member -> member.getName().equals(name))
                .findAny();
    }

    @Override
    public List<Member> findAll() {
        return new ArrayList<>(store.values());
    }
}
