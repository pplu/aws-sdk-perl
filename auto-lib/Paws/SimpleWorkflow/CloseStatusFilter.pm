package Paws::SimpleWorkflow::CloseStatusFilter;
  use Moose;
  has status => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::CloseStatusFilter

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::CloseStatusFilter object:

  $service_obj->Method(Att1 => { status => $value, ..., status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::CloseStatusFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->status

=head1 ATTRIBUTES

=head2 B<REQUIRED> status => Str

  

B<Required.> The close status that must match the close status of an
execution for it to meet the criteria of this filter.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

