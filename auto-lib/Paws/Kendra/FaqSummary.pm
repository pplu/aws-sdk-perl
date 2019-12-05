package Paws::Kendra::FaqSummary;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::FaqSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::FaqSummary object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::FaqSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Provides information about a frequently asked questions and answer
contained in an index.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The UNIX datetime that the FAQ was added to the index.


=head2 Id => Str

  The unique identifier of the FAQ.


=head2 Name => Str

  The name that you assigned the FAQ when you created or updated the FAQ.


=head2 Status => Str

  The current status of the FAQ. When the status is C<ACTIVE> the FAQ is
ready for use.


=head2 UpdatedAt => Str

  The UNIX datetime that the FAQ was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

