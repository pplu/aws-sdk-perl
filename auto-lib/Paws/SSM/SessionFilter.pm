package Paws::SSM::SessionFilter;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest'], required => 1);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::SessionFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::SessionFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::SessionFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Describes a filter for Session Manager information.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The name of the filter.


=head2 B<REQUIRED> Value => Str

  The filter value. Valid values for each filter key are as follows:

=over

=item *

InvokedAfter: Specify a timestamp to limit your results. For example,
specify 2018-08-29T00:00:00Z to see sessions that started August 29,
2018, and later.

=item *

InvokedBefore: Specify a timestamp to limit your results. For example,
specify 2018-08-29T00:00:00Z to see sessions that started before August
29, 2018.

=item *

Target: Specify an instance to which session connections have been
made.

=item *

Owner: Specify an AWS user account to see a list of sessions started by
that user.

=item *

Status: Specify a valid session status to see a list of all sessions
with that status. Status values you can specify include:

=over

=item *

Connected

=item *

Connecting

=item *

Disconnected

=item *

Terminated

=item *

Terminating

=item *

Failed

=back

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

