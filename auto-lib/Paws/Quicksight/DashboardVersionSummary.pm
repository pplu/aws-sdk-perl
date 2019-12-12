package Paws::Quicksight::DashboardVersionSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SourceEntityArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has VersionNumber => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DashboardVersionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::DashboardVersionSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VersionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::DashboardVersionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Dashboard version summary.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the resource.


=head2 CreatedTime => Str

  The time that this dashboard version was created.


=head2 Description => Str

  Description.


=head2 SourceEntityArn => Str

  Source entity ARN.


=head2 Status => Str

  The HTTP status of the request.


=head2 VersionNumber => Int

  Version number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

