package Paws::AccessAnalyzer::SortCriteria;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', request_name => 'attributeName', traits => ['NameInRequest']);
  has OrderBy => (is => 'ro', isa => 'Str', request_name => 'orderBy', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::SortCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::SortCriteria object:

  $service_obj->Method(Att1 => { AttributeName => $value, ..., OrderBy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::SortCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeName

=head1 DESCRIPTION

The criteria used to sort.

=head1 ATTRIBUTES


=head2 AttributeName => Str

  The name of the attribute to sort on.


=head2 OrderBy => Str

  The sort order, ascending or descending.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

