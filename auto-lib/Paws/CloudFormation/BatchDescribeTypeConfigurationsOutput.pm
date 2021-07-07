
package Paws::CloudFormation::BatchDescribeTypeConfigurationsOutput;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::BatchDescribeTypeConfigurationsError]');
  has TypeConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::TypeConfigurationDetails]');
  has UnprocessedTypeConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::TypeConfigurationIdentifier]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::BatchDescribeTypeConfigurationsOutput

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::CloudFormation::BatchDescribeTypeConfigurationsError>]

A list of information concerning any errors generated during the
setting of the specified configurations.


=head2 TypeConfigurations => ArrayRef[L<Paws::CloudFormation::TypeConfigurationDetails>]

A list of any of the specified extension configurations from the
CloudFormation registry.


=head2 UnprocessedTypeConfigurations => ArrayRef[L<Paws::CloudFormation::TypeConfigurationIdentifier>]

A list of any of the specified extension configurations that
CloudFormation could not process for any reason.


=head2 _request_id => Str


=cut

