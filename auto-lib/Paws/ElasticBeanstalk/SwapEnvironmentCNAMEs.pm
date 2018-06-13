
package Paws::ElasticBeanstalk::SwapEnvironmentCNAMEs;
  use Moose;
  has DestinationEnvironmentId => (is => 'ro', isa => 'Str');
  has DestinationEnvironmentName => (is => 'ro', isa => 'Str');
  has SourceEnvironmentId => (is => 'ro', isa => 'Str');
  has SourceEnvironmentName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SwapEnvironmentCNAMEs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::SwapEnvironmentCNAMEs - Arguments for method SwapEnvironmentCNAMEs on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SwapEnvironmentCNAMEs on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method SwapEnvironmentCNAMEs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SwapEnvironmentCNAMEs.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To swap environment CNAMES
    # The following operation swaps the assigned subdomains of two environments:
    $elasticbeanstalk->SwapEnvironmentCNAMEs(
      {
        'DestinationEnvironmentName' => 'my-env-green',
        'SourceEnvironmentName'      => 'my-env-blue'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/SwapEnvironmentCNAMEs>

=head1 ATTRIBUTES


=head2 DestinationEnvironmentId => Str

The ID of the destination environment.

Condition: You must specify at least the C<DestinationEnvironmentID> or
the C<DestinationEnvironmentName>. You may also specify both. You must
specify the C<SourceEnvironmentId> with the
C<DestinationEnvironmentId>.



=head2 DestinationEnvironmentName => Str

The name of the destination environment.

Condition: You must specify at least the C<DestinationEnvironmentID> or
the C<DestinationEnvironmentName>. You may also specify both. You must
specify the C<SourceEnvironmentName> with the
C<DestinationEnvironmentName>.



=head2 SourceEnvironmentId => Str

The ID of the source environment.

Condition: You must specify at least the C<SourceEnvironmentID> or the
C<SourceEnvironmentName>. You may also specify both. If you specify the
C<SourceEnvironmentId>, you must specify the
C<DestinationEnvironmentId>.



=head2 SourceEnvironmentName => Str

The name of the source environment.

Condition: You must specify at least the C<SourceEnvironmentID> or the
C<SourceEnvironmentName>. You may also specify both. If you specify the
C<SourceEnvironmentName>, you must specify the
C<DestinationEnvironmentName>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SwapEnvironmentCNAMEs in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

