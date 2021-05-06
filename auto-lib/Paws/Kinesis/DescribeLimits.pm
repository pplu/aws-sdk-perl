
package Paws::Kinesis::DescribeLimits;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLimits');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::DescribeLimitsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::DescribeLimits - Arguments for method DescribeLimits on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLimits on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method DescribeLimits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLimits.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    my $DescribeLimitsOutput = $kinesis->DescribeLimits();

    # Results:
    my $OpenShardCount = $DescribeLimitsOutput->OpenShardCount;
    my $ShardLimit     = $DescribeLimitsOutput->ShardLimit;

    # Returns a L<Paws::Kinesis::DescribeLimitsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/DescribeLimits>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLimits in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

