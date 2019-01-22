package Paws::Lambda::AccountUsage;
  use Moose;
  has FunctionCount => (is => 'ro', isa => 'Int');
  has TotalCodeSize => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::AccountUsage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::AccountUsage object:

  $service_obj->Method(Att1 => { FunctionCount => $value, ..., TotalCodeSize => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::AccountUsage object:

  $result = $service_obj->Method(...);
  $result->Att1->FunctionCount

=head1 DESCRIPTION

The number of functions and amount of storage in use.

=head1 ATTRIBUTES


=head2 FunctionCount => Int

  The number of Lambda functions.


=head2 TotalCodeSize => Int

  The amount of storage space, in bytes, in use by deployment packages
and layer archives.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

