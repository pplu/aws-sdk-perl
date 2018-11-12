
package Paws::MigrationHub::DescribeApplicationState;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplicationState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHub::DescribeApplicationStateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::DescribeApplicationState - Arguments for method DescribeApplicationState on L<Paws::MigrationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeApplicationState on the
L<AWS Migration Hub|Paws::MigrationHub> service. Use the attributes of this class
as arguments to method DescribeApplicationState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeApplicationState.

=head1 SYNOPSIS

    my $mgh = Paws->service('MigrationHub');
    my $DescribeApplicationStateResult = $mgh->DescribeApplicationState(
      ApplicationId => 'MyApplicationId',

    );

    # Results:
    my $ApplicationStatus = $DescribeApplicationStateResult->ApplicationStatus;
    my $LastUpdatedTime   = $DescribeApplicationStateResult->LastUpdatedTime;

    # Returns a L<Paws::MigrationHub::DescribeApplicationStateResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgh/DescribeApplicationState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The configurationId in ADS that uniquely identifies the grouped
application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeApplicationState in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

