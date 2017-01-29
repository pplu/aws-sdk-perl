
package Paws::CodeBuild::BatchGetBuilds;
  use Moose;
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ids' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetBuilds');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::BatchGetBuildsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchGetBuilds - Arguments for method BatchGetBuilds on Paws::CodeBuild

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetBuilds on the 
AWS CodeBuild service. Use the attributes of this class
as arguments to method BatchGetBuilds.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetBuilds.

As an example:

  $service_obj->BatchGetBuilds(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ids => ArrayRef[Str|Undef]

The IDs of the builds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetBuilds in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

