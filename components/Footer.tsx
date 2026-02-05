"use client";

export default function Footer() {
  return (
    <footer className="py-8 border-t border-white/10 bg-[#030014] text-center text-gray-500 text-sm">
      <div className="max-w-7xl mx-auto px-4">
        <p>
          &copy; {new Date().getFullYear()} Raka Ryandra Guntara. All rights
          reserved.
        </p>
        <p className="mt-2">Built with Next.js, Tailwind CSS & Framer Motion</p>
      </div>
    </footer>
  );
}
