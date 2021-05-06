
package Paws::Discovery::GetDiscoverySummary;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDiscoverySummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::GetDiscoverySummaryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::GetDiscoverySummary - Arguments for method GetDiscoverySummary on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDiscoverySummary on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method GetDiscoverySummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDiscoverySummary.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $GetDiscoverySummaryResponse = $discovery->GetDiscoverySummary();

    # Results:
    my $AgentSummary     = $GetDiscoverySummaryResponse->AgentSummary;
    my $Applications     = $GetDiscoverySummaryResponse->Applications;
    my $ConnectorSummary = $GetDiscoverySummaryResponse->ConnectorSummary;
    my $Servers          = $GetDiscoverySummaryResponse->Servers;
    my $ServersMappedToApplications =
      $GetDiscoverySummaryResponse->ServersMappedToApplications;
    my $ServersMappedtoTags = $GetDiscoverySummaryResponse->ServersMappedtoTags;

    # Returns a L<Paws::Discovery::GetDiscoverySummaryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/GetDiscoverySummary>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDiscoverySummary in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

