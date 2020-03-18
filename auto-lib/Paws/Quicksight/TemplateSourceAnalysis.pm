package Paws::Quicksight::TemplateSourceAnalysis;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has DataSetReferences => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::DataSetReference]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::TemplateSourceAnalysis

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::TemplateSourceAnalysis object:

  $service_obj->Method(Att1 => { Arn => $value, ..., DataSetReferences => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::TemplateSourceAnalysis object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The source analysis of the template.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The Amazon Resource Name (ARN) of the resource.


=head2 B<REQUIRED> DataSetReferences => ArrayRef[L<Paws::Quicksight::DataSetReference>]

  A structure containing information about the dataset references used as
placeholders in the template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

