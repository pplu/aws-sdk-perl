
package Paws::SimpleWorkflow::DomainDetail;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::SimpleWorkflow::DomainConfiguration', traits => ['Unwrapped'], xmlname => 'configuration' , required => 1);
  has DomainInfo => (is => 'ro', isa => 'Paws::SimpleWorkflow::DomainInfo', traits => ['Unwrapped'], xmlname => 'domainInfo' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DomainDetail

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::SimpleWorkflow::DomainConfiguration>





=head2 B<REQUIRED> DomainInfo => L<Paws::SimpleWorkflow::DomainInfo>






=cut

1;