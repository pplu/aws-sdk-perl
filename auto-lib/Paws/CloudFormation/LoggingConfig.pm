# Generated from default/object.tt
package Paws::CloudFormation::LoggingConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw//;
  has LogGroupName => (is => 'ro', isa => Str, required => 1);
  has LogRoleArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LogRoleArn' => {
                                 'type' => 'Str'
                               },
               'LogGroupName' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'LogRoleArn' => 1,
                    'LogGroupName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::LoggingConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::LoggingConfig object:

  $service_obj->Method(Att1 => { LogGroupName => $value, ..., LogRoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::LoggingConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->LogGroupName

=head1 DESCRIPTION

Contains logging configuration information for a type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogGroupName => Str

  The Amazon CloudWatch log group to which CloudFormation sends error
logging information when invoking the type's handlers.


=head2 B<REQUIRED> LogRoleArn => Str

  The ARN of the role that CloudFormation should assume when sending log
entries to CloudWatch logs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

