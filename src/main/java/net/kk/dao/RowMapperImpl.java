package net.kk.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import net.kk.model.Library;
import org.springframework.jdbc.core.RowMapper;

public class RowMapperImpl implements RowMapper<Library> {
	
	@Override
    public Library mapRow(ResultSet rs, int rowNum) throws SQLException {

        Library library = new Library();
        library.setId(rs.getInt(1));
        library.setName(rs.getString(2));
        library.setGenre(rs.getString(3));
        library.setAuthor(rs.getString(4));
        library.setPage(rs.getString(5));
        library.setPrice(rs.getFloat(6));
        return library;
    }
}
