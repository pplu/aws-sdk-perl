# Generated from callargs_class.tt

package Paws::CloudSearch::DescribeDomainEndpointOptions;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CloudSearch::Types qw//;
  has Deployed => (is => 'ro', isa => Bool, predicate => 1);
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeDomainEndpointOptions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudSearch::DescribeDomainEndpointOptionsResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeDomainEndpointOptionsResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DomainName' => 1
                  },
  'types' => {
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'Deployed' => {
                               'type' => 'Bool'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeDomainEndpointOptions - Arguments for method DescribeDomainEndpointOptions on L<Paws::CloudSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDomainEndpointOptions on the
L<Amazon CloudSearch|Paws::CloudSearch> service. Use the attributes of this class
as arguments to method DescribeDomainEndpointOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDomainEndpointOptions.

=head1 SYNOPSIS

    my $cloudsearch = Paws->service('CloudSearch');
    my $DescribeDomainEndpointOptionsResponse =
      $cloudsearch->DescribeDomainEndpointOptions(
      DomainName => 'MyDomainName',
      Deployed   => 1,                # OPTIONAL
      );

    # Results:
    my $DomainEndpointOptions =
      $DescribeDomainEndpointOptionsResponse->DomainEndpointOptions;

 # Returns a L<Paws::CloudSearch::DescribeDomainEndpointOptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudsearch/DescribeDomainEndpointOptions>

=head1 ATTRIBUTES


=head2 Deployed => Bool

Whether to retrieve the latest configuration (which might be in a
Processing state) or the current, active configuration. Defaults to
C<false>.



=head2 B<REQUIRED> DomainName => Str

A string that represents the name of a domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDomainEndpointOptions in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

