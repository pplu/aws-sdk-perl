package Paws::Kendra::DocumentMetadataConfiguration;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Relevance => (is => 'ro', isa => 'Paws::Kendra::Relevance');
  has Search => (is => 'ro', isa => 'Paws::Kendra::Search');
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DocumentMetadataConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::DocumentMetadataConfiguration object:

  $service_obj->Method(Att1 => { Name => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::DocumentMetadataConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Specifies the properties of a custom index field.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the index field.


=head2 Relevance => L<Paws::Kendra::Relevance>

  Provides manual tuning parameters to determine how the field affects
the search results.


=head2 Search => L<Paws::Kendra::Search>

  Provides information about how the field is used during a search.


=head2 B<REQUIRED> Type => Str

  The data type of the index field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

