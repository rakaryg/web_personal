"use client";

import React, { useState } from "react";
import { motion } from "framer-motion";
import { ArrowRight } from "lucide-react";
import { colors } from "@/theme/colors";
import Dialog from "./Dialog";

export default function Hero() {
  const [open, setOpen] = useState(false);

  return (
    <section className="relative min-h-screen flex flex-col items-center justify-center overflow-hidden pt-20">
      {/* Background Effects */}
      <div className="absolute inset-0 w-full h-full bg-[radial-gradient(ellipse_at_top,_var(--tw-gradient-stops))] from-purple-900/40 via-[#030014] to-[#030014] -z-10" />
      <div className="absolute top-0 left-0 w-full h-full bg-[url('/grid.svg')] bg-center [mask-image:linear-gradient(180deg,white,rgba(255,255,255,0))] opacity-20 -z-10" />

      <motion.h1
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ delay: 0.4 }}
        className="text-5xl md:text-7xl font-bold font-heading text-center leading-tight mb-6"
      >
        <span className=" animate-gradient-x">Raka Ryandra Guntara</span>
      </motion.h1>

      <motion.p
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ delay: 0.6 }}
        className="text-gray-400 text-lg md:text-xl text-center max-w-2xl px-4 item-center mb-10"
      >
        Just a random guy who loves gaming but is forced to code.
      </motion.p>

      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ delay: 0.8 }}
        className="flex gap-4"
      >
        <div
          onClick={() => {
            setOpen(true);
          }}
          className="group relative px-6 py-3 bg-white text-black font-semibold rounded-full flex items-center gap-2 overflow-hidden"
          style={{ "--hover-color": colors.green } as React.CSSProperties}
        >
          <span className="relative z-10 transition-colors group-hover:text-[var(--hover-color)]">
            About Me
          </span>
          <ArrowRight className="relative z-10 w-4 h-4 group-hover:translate-x-1 transition-transform group-hover:text-[var(--hover-color)]" />
          <div className="absolute inset-0 opacity-0 group-hover:opacity-100 transition-opacity" />
        </div>
      </motion.div>

      <Dialog open={open} onClose={() => setOpen(false)} title="About Me">
        <p className="text-gray-300">Just scroll don't be lazy</p>
      </Dialog>
    </section>
  );
}
