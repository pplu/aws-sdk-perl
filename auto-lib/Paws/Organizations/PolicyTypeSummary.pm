package Paws::Organizations::PolicyTypeSummary;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::PolicyTypeSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::PolicyTypeSummary object:

  $service_obj->Method(Att1 => { Status => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::PolicyTypeSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

Contains information about a policy type and its status in the
associated root.

=head1 ATTRIBUTES


=head2 Status => Str

  The status of the policy type as it relates to the associated root. To
attach a policy of the specified type to a root or to an OU or account
in that root, it must be available in the organization and enabled for
that root.


=head2 Type => Str

  The name of the policy type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

