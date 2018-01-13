
package Paws::Glue::GetTriggers;
  use Moose;
  has DependentJobName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTriggers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetTriggersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetTriggers - Arguments for method GetTriggers on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTriggers on the 
AWS Glue service. Use the attributes of this class
as arguments to method GetTriggers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTriggers.

As an example:

  $service_obj->GetTriggers(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DependentJobName => Str

The name of the job for which to retrieve triggers. The trigger that
can start this job will be returned, and if there is no such trigger,
all triggers will be returned.



=head2 MaxResults => Int

The maximum size of the response.



=head2 NextToken => Str

A continuation token, if this is a continuation call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTriggers in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

