package Paws::ImageBuilder::ImageRecipeSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has DateCreated => (is => 'ro', isa => 'Str', request_name => 'dateCreated', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Owner => (is => 'ro', isa => 'Str', request_name => 'owner', traits => ['NameInRequest']);
  has ParentImage => (is => 'ro', isa => 'Str', request_name => 'parentImage', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ImageRecipeSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::ImageRecipeSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::ImageRecipeSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A summary of an image recipe.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the image recipe.


=head2 DateCreated => Str

  The date on which this image recipe was created.


=head2 Name => Str

  The name of the image recipe.


=head2 Owner => Str

  The owner of the image recipe.


=head2 ParentImage => Str

  The parent image of the image recipe.


=head2 Platform => Str

  The platform of the image recipe.


=head2 Tags => L<Paws::ImageBuilder::TagMap>

  The tags of the image recipe.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

