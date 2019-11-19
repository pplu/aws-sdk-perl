# Generated from default/object.tt
package Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationRecord;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw//;
  has DomainName => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);
  has ValidationStatus => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Str'
                          },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'Name' => {
                           'type' => 'Str'
                         },
               'Type' => {
                           'type' => 'Str'
                         },
               'ValidationStatus' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'Value' => 'value',
                       'Type' => 'type',
                       'ValidationStatus' => 'validationStatus',
                       'DomainName' => 'domainName',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationRecord object:

  $service_obj->Method(Att1 => { DomainName => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainName

=head1 DESCRIPTION

Describes the validation record of each domain name in the SSL/TLS
certificate.

=head1 ATTRIBUTES


=head2 DomainName => Str

  The domain name against which your SSL/TLS certificate was validated.


=head2 Name => Str

  A fully qualified domain name in the certificate. For example,
C<example.com>.


=head2 Type => Str

  The type of validation record. For example, C<CNAME> for domain
validation.


=head2 ValidationStatus => Str

  The validation status. Valid values are listed below.


=head2 Value => Str

  The value for that type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

