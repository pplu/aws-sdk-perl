package Paws::Quicksight::RowLevelPermissionDataSet;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has PermissionPolicy => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::RowLevelPermissionDataSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::RowLevelPermissionDataSet object:

  $service_obj->Method(Att1 => { Arn => $value, ..., PermissionPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::RowLevelPermissionDataSet object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The row-level security configuration for the dataset.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The Amazon Resource Name (ARN) of the permission dataset.


=head2 B<REQUIRED> PermissionPolicy => Str

  Permission policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

