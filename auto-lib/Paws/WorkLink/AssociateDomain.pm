
package Paws::WorkLink::AssociateDomain;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkLink::Types qw//;
  has AcmCertificateArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DisplayName => (is => 'ro', isa => Str, predicate => 1);
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FleetArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AssociateDomain');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/associateDomain');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkLink::AssociateDomainResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DomainName' => 1,
                    'FleetArn' => 1,
                    'AcmCertificateArn' => 1
                  },
  'types' => {
               'AcmCertificateArn' => {
                                        'type' => 'Str'
                                      },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'FleetArn' => {
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

Paws::WorkLink::AssociateDomain - Arguments for method AssociateDomain on L<Paws::WorkLink>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateDomain on the
L<Amazon WorkLink|Paws::WorkLink> service. Use the attributes of this class
as arguments to method AssociateDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateDomain.

=head1 SYNOPSIS

    my $worklink = Paws->service('WorkLink');
    my $AssociateDomainResponse = $worklink->AssociateDomain(
      AcmCertificateArn => 'MyAcmCertificateArn',
      DomainName        => 'MyDomainName',
      FleetArn          => 'MyFleetArn',
      DisplayName       => 'MyDisplayName',         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink/AssociateDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AcmCertificateArn => Str

The ARN of an issued ACM certificate that is valid for the domain being
associated.



=head2 DisplayName => Str

The name to display.



=head2 B<REQUIRED> DomainName => Str

The fully qualified domain name (FQDN).



=head2 B<REQUIRED> FleetArn => Str

The Amazon Resource Name (ARN) of the fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateDomain in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

