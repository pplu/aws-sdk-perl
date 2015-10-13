package Paws::SimpleWorkflow::TagFilter;
  use Moose;
  has tag => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::TagFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::TagFilter object:

  $service_obj->Method(Att1 => { tag => $value, ..., tag => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::TagFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->tag

=head1 DESCRIPTION

Used to filter the workflow executions in visibility APIs based on a
tag.

=head1 ATTRIBUTES

=head2 B<REQUIRED> tag => Str

  B<Required.> Specifies the tag that must be associated with the
execution for it to meet the filter criteria.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

