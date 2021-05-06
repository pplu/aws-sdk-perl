
package Paws::EMR::SetVisibleToAllUsers;
  use Moose;
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has VisibleToAllUsers => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetVisibleToAllUsers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::SetVisibleToAllUsers - Arguments for method SetVisibleToAllUsers on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetVisibleToAllUsers on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method SetVisibleToAllUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetVisibleToAllUsers.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    $elasticmapreduce->SetVisibleToAllUsers(
      JobFlowIds => [
        'MyXmlString', ...    # max: 10280
      ],
      VisibleToAllUsers => 1,

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/SetVisibleToAllUsers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobFlowIds => ArrayRef[Str|Undef]

The unique identifier of the job flow (cluster).



=head2 B<REQUIRED> VisibleToAllUsers => Bool

A value of C<true> indicates that all IAM users in the AWS account can
perform cluster actions if they have the proper IAM policy permissions.
This is the default. A value of C<false> indicates that only the IAM
user who created the cluster can perform actions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetVisibleToAllUsers in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

