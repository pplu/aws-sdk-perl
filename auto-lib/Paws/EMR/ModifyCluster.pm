
package Paws::EMR::ModifyCluster;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has StepConcurrencyLevel => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::ModifyClusterOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ModifyCluster - Arguments for method ModifyCluster on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyCluster on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method ModifyCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyCluster.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $ModifyClusterOutput = $elasticmapreduce->ModifyCluster(
      ClusterId            => 'MyString',
      StepConcurrencyLevel => 1,            # OPTIONAL
    );

    # Results:
    my $StepConcurrencyLevel = $ModifyClusterOutput->StepConcurrencyLevel;

    # Returns a L<Paws::EMR::ModifyClusterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/ModifyCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

The unique identifier of the cluster.



=head2 StepConcurrencyLevel => Int

The number of steps that can be executed concurrently. You can specify
a maximum of 256 steps.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyCluster in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

