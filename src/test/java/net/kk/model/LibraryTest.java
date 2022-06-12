package net.kk.model;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class LibraryTest {

	@Test
	void testSetName() {
		Library library = new Library();
		library.setName("Munna");
		assertEquals("Munna", library.getName());
	}

}
