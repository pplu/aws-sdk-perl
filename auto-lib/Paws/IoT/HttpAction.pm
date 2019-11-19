# Generated from default/object.tt
package Paws::IoT::HttpAction;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_HttpAuthorization IoT_HttpActionHeader/;
  has Auth => (is => 'ro', isa => IoT_HttpAuthorization);
  has ConfirmationUrl => (is => 'ro', isa => Str);
  has Headers => (is => 'ro', isa => ArrayRef[IoT_HttpActionHeader]);
  has Url => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Url' => 1
                  },
  'NameInRequest' => {
                       'Auth' => 'auth',
                       'Url' => 'url',
                       'ConfirmationUrl' => 'confirmationUrl',
                       'Headers' => 'headers'
                     },
  'types' => {
               'Headers' => {
                              'type' => 'ArrayRef[IoT_HttpActionHeader]',
                              'class' => 'Paws::IoT::HttpActionHeader'
                            },
               'ConfirmationUrl' => {
                                      'type' => 'Str'
                                    },
               'Url' => {
                          'type' => 'Str'
                        },
               'Auth' => {
                           'type' => 'IoT_HttpAuthorization',
                           'class' => 'Paws::IoT::HttpAuthorization'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::HttpAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::HttpAction object:

  $service_obj->Method(Att1 => { Auth => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::HttpAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Auth

=head1 DESCRIPTION

Send data to an HTTPS endpoint.

=head1 ATTRIBUTES


=head2 Auth => IoT_HttpAuthorization

  The authentication method to use when sending data to an HTTPS
endpoint.


=head2 ConfirmationUrl => Str

  The URL to which AWS IoT sends a confirmation message. The value of the
confirmation URL must be a prefix of the endpoint URL. If you do not
specify a confirmation URL AWS IoT uses the endpoint URL as the
confirmation URL. If you use substitution templates in the
confirmationUrl, you must create and enable topic rule destinations
that match each possible value of the substituion template before
traffic is allowed to your endpoint URL.


=head2 Headers => ArrayRef[IoT_HttpActionHeader]

  The HTTP headers to send with the message data.


=head2 B<REQUIRED> Url => Str

  The endpoint URL. If substitution templates are used in the URL, you
must also specify a C<confirmationUrl>. If this is a new destination, a
new C<TopicRuleDestination> is created if possible.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

