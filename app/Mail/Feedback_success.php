<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class Feedback_success extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($alldata,$admin_mail,$company_name)
    {
        $this->to($admin_mail,$company_name);
        $this->replyTo($alldata['email'], $alldata['name']);
        $this->subject($alldata['heading']);
        $this->alldata = $alldata;

    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('mail.feedback_successfull',(['alldata'=>$this->alldata]));
    }
}
