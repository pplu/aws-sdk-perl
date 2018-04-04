package Paws::DynamoDB::PointInTimeRecoverySpecification;
  use Moose;
  has PointInTimeRecoveryEnabled => (is => 'ro', isa => 'Bool', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::PointInTimeRecoverySpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::PointInTimeRecoverySpecification object:

  $service_obj->Method(Att1 => { PointInTimeRecoveryEnabled => $value, ..., PointInTimeRecoveryEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::PointInTimeRecoverySpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->PointInTimeRecoveryEnabled

=head1 DESCRIPTION

Represents the settings used to enable point in time recovery.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PointInTimeRecoveryEnabled => Bool

  Indicates whether point in time recovery is enabled (true) or disabled
(false) on the table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

