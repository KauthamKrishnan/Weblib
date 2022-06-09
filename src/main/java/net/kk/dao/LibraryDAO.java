package net.kk.dao;

import java.util.List;
import net.kk.model.Library;
import org.springframework.jdbc.core.JdbcTemplate;

public class LibraryDAO {
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int insert(Library library) {
        String sql = "INSERT INTO library (name, genre, author, page, price) " +
                "VALUES ('" + library.getName() + "', '" + library.getGenre() + "', '" + library.getAuthor() + "', '"
                + library.getPage() + "', '" + library.getPrice() + "')";
        return jdbcTemplate.update(sql);
    }

    public int update(Library library) {
        String sql = "UPDATE library SET name = '" + library.getName() + "', genre = '" + library.getGenre()
                + "', author = '" + library.getAuthor() + "', page = '" + library.getPage() + "', price='"
                + library.getPrice() + "' WHERE id = '" + library.getId() + "'";
        return jdbcTemplate.update(sql);
    }

    public int delete(int id) {
        String sql = "DELETE FROM library WHERE id = '" + id + "'";
        return jdbcTemplate.update(sql);
    }

    public Library getBookById(int id) {
        String sql = "SELECT * FROM library WHERE id = '" + id + "'";
        return jdbcTemplate.queryForObject(sql, new RowMapperImpl());
    }

    public List<Library> getListOfBooks() {
        String sql = "SELECT * FROM library";
        return jdbcTemplate.query(sql, new RowMapperImpl());
    }
}
