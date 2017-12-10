package Paws::ElastiCache::SlotMigration;
  use Moose;
  has ProgressPercentage => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::SlotMigration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::SlotMigration object:

  $service_obj->Method(Att1 => { ProgressPercentage => $value, ..., ProgressPercentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::SlotMigration object:

  $result = $service_obj->Method(...);
  $result->Att1->ProgressPercentage

=head1 DESCRIPTION

Represents the progress of an online resharding operation.

=head1 ATTRIBUTES


=head2 ProgressPercentage => Num

  The percentage of the slot migration that is complete.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

