"use client";

import { colors } from "@/theme/colors";
import { motion } from "framer-motion";
import { ExternalLink, Github } from "lucide-react";

const projects = [
  {
    title: "React Native CLI",
    tags: ["TypeScript", "Node.js", "Axios", "Turbo Modules", "..."],
    link: "#",
    github: "#",
  },
  {
    title: "Android Native",
    tags: ["Xml", "Kotlin", "Fuel", "Retrofit", "..."],
    link: "#",
    github: "#",
  },
  {
    title: "Flutter",
    tags: ["Dart", "Flutter", "..."],
    link: "#",
    github: "#",
  },
  {
    title: "Next.js",
    tags: ["Typescript", "Node.js", "Axios", "Shadcn", "..."],
    link: "#",
    github: "#",
  },
];

export default function Projects() {
  return (
    <section id="projects" className="py-20 px-4">
      <div className="max-w-7xl mx-auto">
        <motion.h2
          initial={{ opacity: 0, y: 20 }}
          whileInView={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.5 }}
          className="text-4xl md:text-5xl font-bold font-heading text-center mb-16 "
        >
          Experience with
        </motion.h2>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          {projects.map((project, index) => (
            <motion.div
              key={index}
              initial={{ opacity: 0, y: 30 }}
              whileInView={{ opacity: 1, y: 0 }}
              transition={{ delay: index * 0.1, duration: 0.5 }}
              whileHover={{ y: -10 }}
              className="group relative bg-[#0a0a20] border border-white/10 rounded-2xl overflow-hidden hover:border-[var(--hover-border-color)] transition-colors"
              style={
                { "--hover-border-color": colors.green } as React.CSSProperties
              }
            >
              <div className="p-6">
                <h3
                  className="text-2xl font-bold font-heading mb-2 text-white group-hover:text-[var(--hover-color)] transition-colors"
                  style={
                    { "--hover-color": colors.green } as React.CSSProperties
                  }
                >
                  {project.title}
                </h3>
                <div className="flex flex-wrap gap-2 mb-6">
                  {project.tags.map((tag, i) => (
                    <span
                      key={i}
                      className="px-3 py-1 text-xs bg-white/5 border border-white/10 rounded-full text-gray-300"
                    >
                      {tag}
                    </span>
                  ))}
                </div>
              </div>
            </motion.div>
          ))}
        </div>
      </div>
    </section>
  );
}
