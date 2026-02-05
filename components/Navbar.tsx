"use client";

import { motion } from "framer-motion";
import { Github, Linkedin, Mail } from "lucide-react";

export default function Navbar() {
  return (
    <motion.div
      initial={{ y: -100, opacity: 0 }}
      animate={{ y: 0, opacity: 1 }}
      transition={{ duration: 0.8, ease: "easeOut" }}
      className="fixed top-0 left-0 w-full z-50 px-4 py-4 md:py-6"
    >
      <div className="max-w-7xl mx-auto flex items-center justify-between bg-white/5 backdrop-blur-md border border-white/10 rounded-full px-6 py-3 shadow-lg shadow-purple-500/10">
        <div className="text-xl  font-heading">Portfolio</div>

        <div className="flex items-center gap-4">
          <a
            href="#"
            className="text-gray-400 hover:text-white transition-colors"
          >
            <Github size={20} />
          </a>
          <a
            href="#"
            className="text-gray-400 hover:text-white transition-colors"
          >
            <Linkedin size={20} />
          </a>
          <a
            href="mailto:your@email.com"
            className="text-gray-400 hover:text-white transition-colors"
          >
            <Mail size={20} />
          </a>
        </div>
      </div>
    </motion.div>
  );
}
