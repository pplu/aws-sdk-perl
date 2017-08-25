
package Paws::Glue::GetPlan;
  use Moose;
  has Location => (is => 'ro', isa => 'Paws::Glue::Location');
  has Mapping => (is => 'ro', isa => 'ArrayRef[Paws::Glue::MappingEntry]', required => 1);
  has Sinks => (is => 'ro', isa => 'ArrayRef[Paws::Glue::CatalogEntry]');
  has Source => (is => 'ro', isa => 'Paws::Glue::CatalogEntry', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPlan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetPlanResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetPlan - Arguments for method GetPlan on Paws::Glue

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPlan on the 
AWS Glue service. Use the attributes of this class
as arguments to method GetPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPlan.

As an example:

  $service_obj->GetPlan(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Location => L<Paws::Glue::Location>

Parameters for the mapping.



=head2 B<REQUIRED> Mapping => ArrayRef[L<Paws::Glue::MappingEntry>]

The list of mappings from a source table to target tables.



=head2 Sinks => ArrayRef[L<Paws::Glue::CatalogEntry>]

The target tables.



=head2 B<REQUIRED> Source => L<Paws::Glue::CatalogEntry>

The source table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPlan in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

