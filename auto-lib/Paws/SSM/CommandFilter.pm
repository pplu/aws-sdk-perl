package Paws::SSM::CommandFilter;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest'], required => 1);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CommandFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::CommandFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::CommandFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Describes a command filter.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The name of the filter.


=head2 B<REQUIRED> Value => Str

  The filter value. Valid values for each filter key are as follows:

=over

=item *

InvokedAfter: A timestamp to limit your results. For example, specify
C<2018-07-07T00:00:00Z> to see results occurring July 7, 2018, and
later.

=item *

InvokedBefore: A timestamp to limit your results. For example, specify
C<2018-07-07T00:00:00Z> to see results before July 7, 2018.

=item *

Status: Specify a valid command status to see a list of all command
executions with that status. Status values you can specify include:

=over

=item *

Pending

=item *

InProgress

=item *

Success

=item *

Cancelled

=item *

Failed

=item *

TimedOut

=item *

Cancelling

=back

=item *

DocumentName: The name of the SSM document for which you want to see
command results.

For example, specify C<AWS-RunPatchBaseline> to see command executions
that used this SSM document to perform security patching operations on
instances.

=item *

ExecutionStage: An enum whose value can be either C<Executing> or
C<Complete>.

=over

=item *

Specify C<Executing> to see a list of command executions that are
currently still running.

=item *

Specify C<Complete> to see a list of command exeuctions that have
already completed.

=back

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

