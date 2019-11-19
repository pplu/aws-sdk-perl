# Generated from callargs_class.tt

package Paws::RDS::DeleteCustomAvailabilityZone;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw//;
  has CustomAvailabilityZoneId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteCustomAvailabilityZone');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::DeleteCustomAvailabilityZoneResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DeleteCustomAvailabilityZoneResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CustomAvailabilityZoneId' => {
                                               'type' => 'Str'
                                             }
             },
  'IsRequired' => {
                    'CustomAvailabilityZoneId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteCustomAvailabilityZone - Arguments for method DeleteCustomAvailabilityZone on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCustomAvailabilityZone on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DeleteCustomAvailabilityZone.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCustomAvailabilityZone.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DeleteCustomAvailabilityZoneResult = $rds->DeleteCustomAvailabilityZone(
      CustomAvailabilityZoneId => 'MyString',

    );

    # Results:
    my $CustomAvailabilityZone =
      $DeleteCustomAvailabilityZoneResult->CustomAvailabilityZone;

    # Returns a L<Paws::RDS::DeleteCustomAvailabilityZoneResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteCustomAvailabilityZone>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomAvailabilityZoneId => Str

The custom AZ identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCustomAvailabilityZone in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

