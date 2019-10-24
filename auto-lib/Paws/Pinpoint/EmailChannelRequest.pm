# Generated from default/object.tt
package Paws::Pinpoint::EmailChannelRequest;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Pinpoint::Types qw//;
  has ConfigurationSet => (is => 'ro', isa => Str);
  has Enabled => (is => 'ro', isa => Bool);
  has FromAddress => (is => 'ro', isa => Str, required => 1);
  has Identity => (is => 'ro', isa => Str, required => 1);
  has RoleArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FromAddress' => {
                                  'type' => 'Str'
                                },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'Identity' => {
                               'type' => 'Str'
                             },
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'ConfigurationSet' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'FromAddress' => 1,
                    'Identity' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EmailChannelRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EmailChannelRequest object:

  $service_obj->Method(Att1 => { ConfigurationSet => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EmailChannelRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationSet

=head1 DESCRIPTION

Specifies the status and settings of the email channel for an
application.

=head1 ATTRIBUTES


=head2 ConfigurationSet => Str

  The configuration set that you want to apply to email that you send
through the channel by using the Amazon Pinpoint Email API.


=head2 Enabled => Bool

  Specifies whether to enable the email channel for the application.


=head2 B<REQUIRED> FromAddress => Str

  The verified email address that you want to send email from when you
send email through the channel.


=head2 B<REQUIRED> Identity => Str

  The Amazon Resource Name (ARN) of the identity, verified with Amazon
Simple Email Service (Amazon SES), that you want to use when you send
email through the channel.


=head2 RoleArn => Str

  The ARN of the AWS Identity and Access Management (IAM) role that you
want Amazon Pinpoint to use when it submits email-related event data
for the channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

