
package Paws::ELBv2::DescribeAccountLimits;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountLimits');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::DescribeAccountLimitsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAccountLimitsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeAccountLimits - Arguments for method DescribeAccountLimits on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccountLimits on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method DescribeAccountLimits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccountLimits.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    my $DescribeAccountLimitsOutput =
      $elasticloadbalancing->DescribeAccountLimits(
      Marker   => 'MyMarker',    # OPTIONAL
      PageSize => 1,             # OPTIONAL
      );

    # Results:
    my $Limits     = $DescribeAccountLimitsOutput->Limits;
    my $NextMarker = $DescribeAccountLimitsOutput->NextMarker;

    # Returns a L<Paws::ELBv2::DescribeAccountLimitsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DescribeAccountLimits>

=head1 ATTRIBUTES


=head2 Marker => Str

The marker for the next set of results. (You received this marker from
a previous call.)



=head2 PageSize => Int

The maximum number of results to return with this call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccountLimits in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

