# Generated by default/object.tt
package Paws::Quicksight::ThemeSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has LatestVersionNumber => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has ThemeId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ThemeSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::ThemeSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., ThemeId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::ThemeSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The theme summary.

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the resource.


=head2 CreatedTime => Str

The date and time that this theme was created.


=head2 LastUpdatedTime => Str

The last date and time that this theme was updated.


=head2 LatestVersionNumber => Int

The latest version number for the theme.


=head2 Name => Str

the display name for the theme.


=head2 ThemeId => Str

The ID of the theme. This ID is unique per AWS Region for each AWS
account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

