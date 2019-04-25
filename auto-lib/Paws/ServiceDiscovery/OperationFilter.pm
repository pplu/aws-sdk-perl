package Paws::ServiceDiscovery::OperationFilter;
  use Moose;
  has Condition => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::OperationFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::OperationFilter object:

  $service_obj->Method(Att1 => { Condition => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::OperationFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Condition

=head1 DESCRIPTION

A complex type that lets you select the operations that you want to
list.

=head1 ATTRIBUTES


=head2 Condition => Str

  The operator that you want to use to determine whether an operation
matches the specified value. Valid values for condition include:

=over

=item *

C<EQ>: When you specify C<EQ> for the condition, you can specify only
one value. C<EQ> is supported for C<NAMESPACE_ID>, C<SERVICE_ID>,
C<STATUS>, and C<TYPE>. C<EQ> is the default condition and can be
omitted.

=item *

C<IN>: When you specify C<IN> for the condition, you can specify a list
of one or more values. C<IN> is supported for C<STATUS> and C<TYPE>. An
operation must match one of the specified values to be returned in the
response.

=item *

C<BETWEEN>: Specify a start date and an end date in Unix date/time
format and Coordinated Universal Time (UTC). The start date must be the
first value. C<BETWEEN> is supported for C<UPDATE_DATE>.

=back



=head2 B<REQUIRED> Name => Str

  Specify the operations that you want to get:

=over

=item *

B<NAMESPACE_ID>: Gets operations related to specified namespaces.

=item *

B<SERVICE_ID>: Gets operations related to specified services.

=item *

B<STATUS>: Gets operations based on the status of the operations:
C<SUBMITTED>, C<PENDING>, C<SUCCEED>, or C<FAIL>.

=item *

B<TYPE>: Gets specified types of operation.

=item *

B<UPDATE_DATE>: Gets operations that changed status during a specified
date/time range.

=back



=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  Specify values that are applicable to the value that you specify for
C<Name>:

=over

=item *

B<NAMESPACE_ID>: Specify one namespace ID.

=item *

B<SERVICE_ID>: Specify one service ID.

=item *

B<STATUS>: Specify one or more statuses: C<SUBMITTED>, C<PENDING>,
C<SUCCEED>, or C<FAIL>.

=item *

B<TYPE>: Specify one or more of the following types:
C<CREATE_NAMESPACE>, C<DELETE_NAMESPACE>, C<UPDATE_SERVICE>,
C<REGISTER_INSTANCE>, or C<DEREGISTER_INSTANCE>.

=item *

B<UPDATE_DATE>: Specify a start date and an end date in Unix date/time
format and Coordinated Universal Time (UTC). The start date must be the
first value.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

