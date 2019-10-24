# Generated from default/object.tt
package Paws::ELBv2::SslPolicy;
  use Moo;
  use Types::Standard qw/ArrayRef Str Undef/;
  use Paws::ELBv2::Types qw/ELBv2_Cipher/;
  has Ciphers => (is => 'ro', isa => ArrayRef[ELBv2_Cipher]);
  has Name => (is => 'ro', isa => Str);
  has SslProtocols => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SslProtocols' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 },
               'Ciphers' => {
                              'class' => 'Paws::ELBv2::Cipher',
                              'type' => 'ArrayRef[ELBv2_Cipher]'
                            },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SslPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::SslPolicy object:

  $service_obj->Method(Att1 => { Ciphers => $value, ..., SslProtocols => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::SslPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->Ciphers

=head1 DESCRIPTION

Information about a policy used for SSL negotiation.

=head1 ATTRIBUTES


=head2 Ciphers => ArrayRef[ELBv2_Cipher]

  The ciphers.


=head2 Name => Str

  The name of the policy.


=head2 SslProtocols => ArrayRef[Str|Undef]

  The protocols.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

