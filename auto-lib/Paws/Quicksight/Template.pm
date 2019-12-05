package Paws::Quicksight::Template;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has TemplateId => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Paws::Quicksight::TemplateVersion');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::Template

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::Template object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::Template object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A template object. A template is an entity in QuickSight which
encapsulates the metadata required to create an analysis that can be
used to create dashboard. It adds a layer of abstraction by replacing
the dataset associated with the analysis with placeholders. Templates
can be used to create dashboards by replacing dataset placeholders with
datasets which follow the same schema that was used to create the
source analysis and template.

You can share templates across AWS accounts by allowing users in other
AWS accounts to create a template or a dashboard from an existing
template.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the template.


=head2 CreatedTime => Str

  Time when this was created.


=head2 LastUpdatedTime => Str

  Time when this was last updated.


=head2 Name => Str

  The display name of the template.


=head2 TemplateId => Str

  The ID for the template. This is unique per AWS Region for each AWS
account.


=head2 Version => L<Paws::Quicksight::TemplateVersion>

  A structure describing the versions of the template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

