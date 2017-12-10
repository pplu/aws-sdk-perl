package Paws::MediaConvert::NielsenConfiguration;
  use Moose;
  has BreakoutCode => (is => 'ro', isa => 'Int', request_name => 'breakoutCode', traits => ['NameInRequest']);
  has DistributorId => (is => 'ro', isa => 'Str', request_name => 'distributorId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::NielsenConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::NielsenConfiguration object:

  $service_obj->Method(Att1 => { BreakoutCode => $value, ..., DistributorId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::NielsenConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BreakoutCode

=head1 DESCRIPTION

Settings for Nielsen Configuration

=head1 ATTRIBUTES


=head2 BreakoutCode => Int

  Use Nielsen Configuration (NielsenConfiguration) to set the Nielsen
measurement system breakout code. Supported values are 0, 3, 7, and 9.


=head2 DistributorId => Str

  Use Distributor ID (DistributorID) to specify the distributor ID that
is assigned to your organization by Neilsen.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

