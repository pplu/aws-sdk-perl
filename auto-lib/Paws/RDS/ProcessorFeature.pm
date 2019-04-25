package Paws::RDS::ProcessorFeature;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ProcessorFeature

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::ProcessorFeature object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::ProcessorFeature object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Contains the processor features of a DB instance class.

To specify the number of CPU cores, use the C<coreCount> feature name
for the C<Name> parameter. To specify the number of threads per core,
use the C<threadsPerCore> feature name for the C<Name> parameter.

You can set the processor features of the DB instance class for a DB
instance when you call one of the following actions:

=over

=item *

CreateDBInstance

=item *

ModifyDBInstance

=item *

RestoreDBInstanceFromDBSnapshot

=item *

RestoreDBInstanceFromS3

=item *

RestoreDBInstanceToPointInTime

=back

You can view the valid processor values for a particular instance class
by calling the DescribeOrderableDBInstanceOptions action and specifying
the instance class for the C<DBInstanceClass> parameter.

In addition, you can use the following actions for DB instance class
processor information:

=over

=item *

DescribeDBInstances

=item *

DescribeDBSnapshots

=item *

DescribeValidDBInstanceModifications

=back

For more information, see Configuring the Processor of the DB Instance
Class
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#USER_ConfigureProcessor)
in the I<Amazon RDS User Guide.>

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the processor feature. Valid names are C<coreCount> and
C<threadsPerCore>.


=head2 Value => Str

  The value of a processor feature name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

