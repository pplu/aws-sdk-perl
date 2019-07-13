package Paws::ResourceGroups::QueryError;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::QueryError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ResourceGroups::QueryError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ResourceGroups::QueryError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

A two-part error structure that can occur in C<ListGroupResources> or
C<SearchResources> operations on CloudFormation stack-based queries.
The error occurs if the CloudFormation stack on which the query is
based either does not exist, or has a status that renders the stack
inactive. A C<QueryError> occurrence does not necessarily mean that AWS
Resource Groups could not complete the operation, but the resulting
group might have no member resources.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  Possible values are C<CLOUDFORMATION_STACK_INACTIVE> and
C<CLOUDFORMATION_STACK_NOT_EXISTING>.


=head2 Message => Str

  A message that explains the C<ErrorCode> value. Messages might state
that the specified CloudFormation stack does not exist (or no longer
exists). For C<CLOUDFORMATION_STACK_INACTIVE>, the message typically
states that the CloudFormation stack has a status that is not (or no
longer) active, such as C<CREATE_FAILED>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

