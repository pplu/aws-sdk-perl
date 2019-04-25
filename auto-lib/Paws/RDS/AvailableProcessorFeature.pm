package Paws::RDS::AvailableProcessorFeature;
  use Moose;
  has AllowedValues => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::AvailableProcessorFeature

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::AvailableProcessorFeature object:

  $service_obj->Method(Att1 => { AllowedValues => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::AvailableProcessorFeature object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedValues

=head1 DESCRIPTION

Contains the available processor feature information for the DB
instance class of a DB instance.

For more information, see Configuring the Processor of the DB Instance
Class
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#USER_ConfigureProcessor)
in the I<Amazon RDS User Guide.>

=head1 ATTRIBUTES


=head2 AllowedValues => Str

  The allowed values for the processor feature of the DB instance class.


=head2 DefaultValue => Str

  The default value for the processor feature of the DB instance class.


=head2 Name => Str

  The name of the processor feature. Valid names are C<coreCount> and
C<threadsPerCore>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

