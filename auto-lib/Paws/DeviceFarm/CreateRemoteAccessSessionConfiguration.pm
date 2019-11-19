# Generated from default/object.tt
package Paws::DeviceFarm::CreateRemoteAccessSessionConfiguration;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::DeviceFarm::Types qw//;
  has BillingMethod => (is => 'ro', isa => Str);
  has VpceConfigurationArns => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpceConfigurationArns' => {
                                            'type' => 'ArrayRef[Str|Undef]'
                                          },
               'BillingMethod' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'BillingMethod' => 'billingMethod',
                       'VpceConfigurationArns' => 'vpceConfigurationArns'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateRemoteAccessSessionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::CreateRemoteAccessSessionConfiguration object:

  $service_obj->Method(Att1 => { BillingMethod => $value, ..., VpceConfigurationArns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::CreateRemoteAccessSessionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BillingMethod

=head1 DESCRIPTION

Configuration settings for a remote access session, including billing
method.

=head1 ATTRIBUTES


=head2 BillingMethod => Str

  The billing method for the remote access session.


=head2 VpceConfigurationArns => ArrayRef[Str|Undef]

  An array of Amazon Resource Names (ARNs) included in the VPC endpoint
configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

