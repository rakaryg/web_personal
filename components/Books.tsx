"use client";

import { colors } from "@/theme/colors";
import { motion } from "framer-motion";
import { BookOpen, Star } from "lucide-react";

interface Book {
  title: string;
  author: string;
  category: string;
  rating: number;
  status: "Reading" | "Completed" | "Plan to Read";
}

const books: Book[] = [
  {
    title: "Cries in the Drizzle",
    author: "Yu Hua",
    category: "Fiction",
    rating: 4,
    status: "Completed",
  },
  {
    title: "Animal Farm",
    author: "George Orwell",
    category: "Satire",
    rating: 5,
    status: "Completed",
  },
  {
    title: "Percy Jackson and the Olympians: The Lightning Thief",
    author: "Rick Riordan",
    category: "Fantasy",
    rating: 5,
    status: "Completed",
  },
  {
    title: "1984",
    author: "George Orwell",
    category: "Dystopian",
    rating: 0,
    status: "Reading",
  },
];

export default function Books() {
  return (
    <section id="books" className="py-100 px-4 bg-[#030014]">
      <div className="max-w-7xl mx-auto">
        <div className="text-center mb-16">
          <motion.h2
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5 }}
            className="text-4xl md:text-5xl font-bold font-heading mb-6 text-white"
          >
            Library
          </motion.h2>
          <motion.p
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.2, duration: 0.5 }}
            className="text-gray-400 text-lg md:text-xl max-w-2xl mx-auto"
          >
            I'm not a big reader, but here are some books that have influenced
            my journey.
          </motion.p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          {books.map((book, index) => (
            <motion.div
              key={index}
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              transition={{ delay: index * 0.1, duration: 0.5 }}
              whileHover={{ y: -5 }}
              className="group bg-[#0a0a20] border border-white/10 rounded-xl p-6 h transition-colors flex flex-col justify-between h-full hover:border-[var(--hover-border-color)]"
              style={
                { "--hover-border-color": colors.green } as React.CSSProperties
              }
            >
              <div>
                <div className="flex items-center justify-between mb-4">
                  <div className="p-2 bg-white/5 rounded-lg text-purple-400 group-hover:text-white transition-colors">
                    <BookOpen size={20} />
                  </div>
                  <span
                    className={`text-xs px-2 py-1 rounded-full border ${
                      book.status === "Completed"
                        ? "border-green-500/30 text-green-400 bg-green-500/10"
                        : book.status === "Reading"
                          ? "border-blue-500/30 text-blue-400 bg-blue-500/10"
                          : "border-gray-500/30 text-gray-400 bg-gray-500/10"
                    }`}
                  >
                    {book.status}
                  </span>
                </div>

                <h3
                  className="text-xl font-bold text-white mb-1 group-hover:text-[var(--hover-color)] transition-colors"
                  style={
                    { "--hover-color": colors.green } as React.CSSProperties
                  }
                >
                  {book.title}
                </h3>
                <p className="text-sm text-gray-500 mb-3">{book.author}</p>
              </div>

              <div className="flex items-center gap-1 text-yellow-500">
                {[...Array(5)].map((_, i) => (
                  <Star
                    key={i}
                    size={14}
                    fill={i < book.rating ? "currentColor" : "none"}
                    className={
                      i < book.rating ? "text-yellow-500" : "text-gray-700"
                    }
                  />
                ))}
              </div>
            </motion.div>
          ))}
        </div>
      </div>
    </section>
  );
}
