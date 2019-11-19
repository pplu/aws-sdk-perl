# Generated from callargs_class.tt

package Paws::CloudSearch::UpdateDomainEndpointOptions;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_DomainEndpointOptions/;
  has DomainEndpointOptions => (is => 'ro', isa => CloudSearch_DomainEndpointOptions, required => 1, predicate => 1);
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDomainEndpointOptions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudSearch::UpdateDomainEndpointOptionsResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'UpdateDomainEndpointOptionsResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DomainEndpointOptions' => 1,
                    'DomainName' => 1
                  },
  'types' => {
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'DomainEndpointOptions' => {
                                            'class' => 'Paws::CloudSearch::DomainEndpointOptions',
                                            'type' => 'CloudSearch_DomainEndpointOptions'
                                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::UpdateDomainEndpointOptions - Arguments for method UpdateDomainEndpointOptions on L<Paws::CloudSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainEndpointOptions on the
L<Amazon CloudSearch|Paws::CloudSearch> service. Use the attributes of this class
as arguments to method UpdateDomainEndpointOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainEndpointOptions.

=head1 SYNOPSIS

    my $cloudsearch = Paws->service('CloudSearch');
    my $UpdateDomainEndpointOptionsResponse =
      $cloudsearch->UpdateDomainEndpointOptions(
      DomainEndpointOptions => {
        EnforceHTTPS      => 1,                             # OPTIONAL
        TLSSecurityPolicy => 'Policy-Min-TLS-1-0-2019-07'
        , # values: Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07; OPTIONAL
      },
      DomainName => 'MyDomainName',

      );

    # Results:
    my $DomainEndpointOptions =
      $UpdateDomainEndpointOptionsResponse->DomainEndpointOptions;

   # Returns a L<Paws::CloudSearch::UpdateDomainEndpointOptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudsearch/UpdateDomainEndpointOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainEndpointOptions => CloudSearch_DomainEndpointOptions

Whether to require that all requests to the domain arrive over HTTPS.
We recommend Policy-Min-TLS-1-2-2019-07 for TLSSecurityPolicy. For
compatibility with older clients, the default is
Policy-Min-TLS-1-0-2019-07.



=head2 B<REQUIRED> DomainName => Str

A string that represents the name of a domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainEndpointOptions in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

