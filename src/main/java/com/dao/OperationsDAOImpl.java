package com.dao;

import com.model.User;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.sql.*;
import java.util.List;

@Service
public class OperationsDAOImpl implements OperationsDAO {


    private JdbcTemplate jdbcTemplate;

    public OperationsDAOImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<User> getAllUsers() {
        List<User> userList = jdbcTemplate.query("SELECT * FROM User", new RowMapper<User>() {

            @Override
            public User mapRow(ResultSet rs, int rowNum) throws SQLException {
                User user = new User();

                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setCurrent_credit(rs.getLong("current_credit"));

                return user;
            }

        });

        return userList;
    }

    @Override
    public List<User> getUser(String fullName) {
        List<User> userList = jdbcTemplate.query("SELECT * FROM User WHERE name = ?", new Object[]{fullName}, new RowMapper<User>() {

            @Override
            public User mapRow(ResultSet rs, int rowNum) throws SQLException {
                User user = new User();

                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setCurrent_credit(rs.getLong("current_credit"));


                return user;

            }
        });
        return userList;
    }

    @Override
    public int updateTransaction(String from, String to, long credit) {
        String sql = "insert into Transfers(credit_from,credit_to,transfered_amount) values(?,?,?)";

        try {

            int counter = jdbcTemplate.update(sql,
                    new Object[] { from, to, credit});

            return counter;

        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public int updateFromUser(String from, long credit) {
        long existingCredit = 0;
        String sql = "update User set current_credit=? where name=?";
        List<User> usr = getUser(from);
        for (User u: usr
             ) {
             existingCredit = u.getCurrent_credit();
        }

        try {

            int counter = jdbcTemplate.update(sql,
                    new Object[] { (existingCredit - credit), from});

            return counter;

        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public int updateToUser(String to, long credit) {
        long existingCredit = 0;
        String sql = "update User set current_credit=? where name=?";
        List<User> usr = getUser(to);
        for (User u: usr
        ) {
            existingCredit = u.getCurrent_credit();
        }

        try {

            long sum = Long.sum(existingCredit,credit);

            int counter = jdbcTemplate.update(sql,
                    new Object[] { sum , to});

            return counter;

        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

}
