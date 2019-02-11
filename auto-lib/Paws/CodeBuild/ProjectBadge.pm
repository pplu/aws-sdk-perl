package Paws::CodeBuild::ProjectBadge;
  use Moose;
  has BadgeEnabled => (is => 'ro', isa => 'Bool', request_name => 'badgeEnabled', traits => ['NameInRequest']);
  has BadgeRequestUrl => (is => 'ro', isa => 'Str', request_name => 'badgeRequestUrl', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ProjectBadge

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::ProjectBadge object:

  $service_obj->Method(Att1 => { BadgeEnabled => $value, ..., BadgeRequestUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::ProjectBadge object:

  $result = $service_obj->Method(...);
  $result->Att1->BadgeEnabled

=head1 DESCRIPTION

Information about the build badge for the build project.

=head1 ATTRIBUTES


=head2 BadgeEnabled => Bool

  Set this to true to generate a publicly accessible URL for your
project's build badge.


=head2 BadgeRequestUrl => Str

  The publicly-accessible URL through which you can access the build
badge for your project.

The publicly accessible URL through which you can access the build
badge for your project.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

