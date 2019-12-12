package Paws::Quicksight::TemplateAlias;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has TemplateVersionNumber => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::TemplateAlias

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::TemplateAlias object:

  $service_obj->Method(Att1 => { AliasName => $value, ..., TemplateVersionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::TemplateAlias object:

  $result = $service_obj->Method(...);
  $result->Att1->AliasName

=head1 DESCRIPTION

The template alias.

=head1 ATTRIBUTES


=head2 AliasName => Str

  The display name of the template alias.


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the template alias.


=head2 TemplateVersionNumber => Int

  The version number of the template alias.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

