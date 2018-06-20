
package Paws::IoT::ListAttachedPolicies;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');
  has PageSize => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'pageSize');
  has Recursive => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'recursive');
  has Target => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'target', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAttachedPolicies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/attached-policies/{target}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListAttachedPoliciesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAttachedPolicies - Arguments for method ListAttachedPolicies on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAttachedPolicies on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListAttachedPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAttachedPolicies.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListAttachedPoliciesResponse = $iot->ListAttachedPolicies(
      Target    => 'MyPolicyTarget',
      Marker    => 'MyMarker',         # OPTIONAL
      PageSize  => 1,                  # OPTIONAL
      Recursive => 1,                  # OPTIONAL
    );

    # Results:
    my $NextMarker = $ListAttachedPoliciesResponse->NextMarker;
    my $Policies   = $ListAttachedPoliciesResponse->Policies;

    # Returns a L<Paws::IoT::ListAttachedPoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListAttachedPolicies>

=head1 ATTRIBUTES


=head2 Marker => Str

The token to retrieve the next set of results.



=head2 PageSize => Int

The maximum number of results to be returned per request.



=head2 Recursive => Bool

When true, recursively list attached policies.



=head2 B<REQUIRED> Target => Str

The group for which the policies will be listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAttachedPolicies in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

