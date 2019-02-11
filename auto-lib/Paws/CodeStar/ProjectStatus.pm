package Paws::CodeStar::ProjectStatus;
  use Moose;
  has Reason => (is => 'ro', isa => 'Str', request_name => 'reason', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ProjectStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStar::ProjectStatus object:

  $service_obj->Method(Att1 => { Reason => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStar::ProjectStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Reason

=head1 DESCRIPTION

An indication of whether a project creation or deletion is failed or
successful.

=head1 ATTRIBUTES


=head2 Reason => Str

  In the case of a project creation or deletion failure, a reason for the
failure.


=head2 B<REQUIRED> State => Str

  The phase of completion for a project creation or deletion.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

